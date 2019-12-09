
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, foonathan-memory-vendor, cmake, openssl, tinyxml-2, fastcdr }:
buildRosPackage {
  pname = "ros-eloquent-fastrtps";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/eloquent/fastrtps/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "b16b1f0223f73d7dea2219235f8d9de66549c7a5fdd59db39878a679fc2bf861";
  };

  buildType = "cmake";
  buildInputs = [ tinyxml-2 fastcdr asio foonathan-memory-vendor ];
  propagatedBuildInputs = [ tinyxml-2 openssl fastcdr foonathan-memory-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
