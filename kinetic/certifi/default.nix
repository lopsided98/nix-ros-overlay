
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin-pip, catkin }:
buildRosPackage {
  pname = "ros-kinetic-certifi";
  version = "2015.11.20-r3";

  src = fetchurl {
    url = https://github.com/asmodehn/certifi-rosrelease/archive/release/kinetic/certifi/2015.11.20-3.tar.gz;
    sha256 = "4d532dbb968f6d15afdcbcfd6c0aa92218bdcc09a19fc406b3d582a8068c8d2e";
  };

  nativeBuildInputs = [ catkin-pip catkin ];

  meta = {
    description = ''(Python Distribution) A carefully curated collection of Root Certificates for validating the trustworthiness of SSL certificates while verifying the identity of TLS hosts. http://certifi.io'';
    #license = lib.licenses.BSD;
  };
}
