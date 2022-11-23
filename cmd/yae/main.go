// Yae - The open-source hyper-metaverse based on instant messaging.
// Copyright(c) 2022 Star Inc. All Rights Reserved.
// The software licensed under Mozilla Public License Version 2.0

package main

import (
	"log"

	"github.com/yaeverse/yae/kernel"
)

func main() {
	// Create quicServer
	quicServer := kernel.NewQUICd()

	// Run httpServer
	log.Println("Start")
	if err := quicServer.ListenAndServe(); err != nil {
		panic(err)
	}
}
