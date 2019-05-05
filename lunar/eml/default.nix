
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-lunar-eml";
  version = "1.8.15-r2";

  src = fetchurl {
    url = https://github.com/ros-gbp/eml-release/archive/release/lunar/eml/1.8.15-2.tar.gz;
    sha256 = "2b015f26057e60a4b43dc09ac58c6b5ca10dc927c2c6f6b2ad7cbd41da9b83d0";
  };

  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for the PR2
      robot based on the work done at Flanders' Mechatronics Technology Centre.'';
    license = with lib.licenses; [ "Binary Only" ];
  };
}
