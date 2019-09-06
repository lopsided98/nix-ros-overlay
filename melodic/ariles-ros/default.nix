
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, libyamlcpp, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ariles-ros";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/asherikov/ariles-release/archive/release/melodic/ariles_ros/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "754b8f19a0eff587ad0817975739d9e6451007848376ae6171b8a02277c61a2d";
  };

  buildType = "cmake";
  buildInputs = [ libyamlcpp roscpp boost eigen ];
  propagatedBuildInputs = [ libyamlcpp roscpp boost eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin package Ariles serialization/configuration library'';
    license = with lib.licenses; [ asl20 ];
  };
}
