
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-ruckig";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/humble/ruckig/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "fc2f74b089449ac7778a7092ff5b8d97fb0781ae0e115b9b9cf6d8f4765fe39b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
