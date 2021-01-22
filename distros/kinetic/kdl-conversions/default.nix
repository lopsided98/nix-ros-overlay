
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-kinetic-kdl-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/kinetic/kdl_conversions/1.11.9-0.tar.gz";
    name = "1.11.9-0.tar.gz";
    sha256 = "34efddf9eb4ade2ba483d41cbe433179eb50f0533c9b3bddc023c242375be002";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between KDL and geometry_msgs types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
