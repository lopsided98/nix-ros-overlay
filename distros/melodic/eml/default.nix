
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-eml";
  version = "1.8.15-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eml-release/archive/release/melodic/eml/1.8.15-2.tar.gz";
    name = "1.8.15-2.tar.gz";
    sha256 = "be4a25b2632c6064f9d2567a5d1f9915aca203bebd8eda03e9cb3758d90e3c2c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for the PR2
      robot based on the work done at Flanders' Mechatronics Technology Centre.'';
    license = with lib.licenses; [ "Binary-Only" ];
  };
}
