
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, p2os-teleop, p2os-driver, p2os-urdf, catkin, p2os-msgs }:
buildRosPackage {
  pname = "ros-lunar-p2os-launch";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_launch/2.1.0-0.tar.gz;
    sha256 = "6c079627270cfa9dec0fe64405c210a64b51266e38d4e8c7225ef34e47ba715c";
  };

  propagatedBuildInputs = [ p2os-teleop p2os-urdf p2os-driver p2os-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
