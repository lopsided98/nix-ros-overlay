
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, openssl, fastcdr, tinyxml-2, cmake }:
buildRosPackage {
  pname = "ros-crystal-fastrtps";
  version = "1.7.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/fastrtps-release/archive/release/crystal/fastrtps/1.7.2-0.tar.gz;
    sha256 = "296305d8465e27e3cff4289865b15bf2bb40ccfb7a7d60e7c28b3a5df3a1a33a";
  };

  buildInputs = [ fastcdr tinyxml-2 asio ];
  propagatedBuildInputs = [ openssl fastcdr tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
