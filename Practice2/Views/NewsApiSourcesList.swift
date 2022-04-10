//
//  NewsApiList.swift
//  Practice2
//
//  Created by Andrey Budnitskiy on 03.04.2022.
//

import Foundation
import SwiftUI

struct NewsApiSourcesList: View {

    @ObservedObject var viewModel: NewsApiSourcesViewModel

    var body: some View {

            NavigationContainerView {
                VStack {

                    NavigationBarWithBackButton(title: "News sources",
                                                useBackButton: false)

                    List {

                            ForEach(viewModel.list) { source in
                                LazyView(NewsApiSourceCell(data: source))
                            }

                    }
                    Spacer()
                }
            }
            .showActivityIdicator(viewModel.list.count == 0,
                                  onTop: true)
            .listStyle(.plain)
            .onAppear {
                viewModel.fetchData()
            }

    }

}

