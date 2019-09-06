
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, openssl, fastcdr, tinyxml-2, cmake }:
buildRosPackage {
  pname = "ros-dashing-fastrtps";
  version = "1.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/dashing/fastrtps/1.8.0-2.tar.gz";
    name = "1.8.0-2.tar.gz";
    sha256 = "3101b12f9fe781c7d9560496a6ab0dd5af95dfbae0d1cf073af18baff8aeac9b";
  };

  buildType = "cmake";
  buildInputs = [ fastcdr tinyxml-2 asio ];
  propagatedBuildInputs = [ openssl fastcdr tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
