
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-melodic-kdl-conversions";
  version = "1.12.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/kdl_conversions/1.12.0-0.tar.gz";
    name = "1.12.0-0.tar.gz";
    sha256 = "2a82a8648b7c47cdf7ee46f7bf331202c2d8e6a6d25c058d944f78283452994f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between KDL and geometry_msgs types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
