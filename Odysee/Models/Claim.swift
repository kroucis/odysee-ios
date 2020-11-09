//
//  Claim.swift
//  Odysee
//
//  Created by Akinwale Ariwodola on 02/11/2020.
//

import Foundation

class Claim: Decodable, Identifiable  {
    var address: String?
    var amount: String?
    var canonicalUrl: String?
    var claimId: String?
    var claimOp: String?
    var confirmations: Int?
    var height: Int?
    var isChannelSignatureValid: Bool?
    var name: String?
    var normalizedName: String?
    var nout: Int?
    var permanentUrl: String?
    var shortUrl: String?
    var signingChannel: Claim?
    var timestamp: Int64?
    var txid: String?
    var type: String?
    var value: Metadata?
    var valueType: String?
    
    private enum CodingKeys: String, CodingKey {
        case address, amount, canonicalUrl = "canonical_url", claimId = "claim_id", claimOp = "claim_op", confirmations,
             height, isChannelSignatureValid = "is_channel_signature_valid", name, normalizedName = "normalized_name",
             nout, permanentUrl = "permanent_url", shortUrl = "short_url", signingChannel = "signing_channel", timestamp,
             txid, value, valueType = "value_type"
    }
    
    struct Metadata: Decodable {
        var title: String?
        var description: String?
        var thumbnail: Resource?
        var languages: [String]?
        var tags: [String]?
        var locations: [Location]?
        
        // channel
        var publicKey: String?
        var publicKeyId: String?
        var cover: Resource?
        var email: String?
        var websiteUrl: String?
        var featured: [String]?
        
        // stream
        var license: String?
        var licenseUrl: String?
        var releaseTime: String?
        var author: String?
        var fee: Fee?
        var streamType: String?
        var source: Source?
        var video: StreamInfo?
        var audio: StreamInfo?
        var image: StreamInfo?
        var software: StreamInfo?
        
        private enum CodingKeys: String, CodingKey {
            case title, description, thumbnail, languages, tags, locations, publicKey = "public_key", publicKeyId = "public_key_id",
                 cover, email, websiteUrl = "website_url", featured, license, licenseUrl = "license_url", releaseTime = "release_time",
                 author, fee, streamType = "stream_type", source, video, audio, image, software
        }
    }
    struct Source: Decodable {
        var sdHash: String?
        var mediaType: String?
        var hash: String?
        var name: String?
        var size: String?
        
        private enum CodingKeys: String, CodingKey {
            case sdHash = "sd_hash", mediaType = "media_type", hash, name, size
        }
    }
    struct Fee: Decodable {
        var amount: String?
        var currency: String?
        var address: String?
    }
    struct Location: Decodable {
        var country: String?
    }
    struct Resource: Decodable {
        var url: String?
    }
    struct StreamInfo: Decodable {
        var duration: Int64?
        var height: Int64?
        var width: Int64?
        var os: String?
    }
}
