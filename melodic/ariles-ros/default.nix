
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ariles-ros";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/asherikov/ariles-release/archive/release/melodic/ariles_ros/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "ba25ae4ed03521009d67be9148fac52f462075a7cf387e4ad30ec34b1276a159";
  };

  buildType = "cmake";
  buildInputs = [ libyamlcpp boost eigen roscpp ];
  propagatedBuildInputs = [ libyamlcpp boost eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin package Ariles serialization/configuration library'';
    license = with lib.licenses; [ asl20 ];
  };
}
