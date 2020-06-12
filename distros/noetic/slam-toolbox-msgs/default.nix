
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-slam-toolbox-msgs";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/noetic/slam_toolbox_msgs/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "dae1e4189516139bd5c18e4e4ff17c9cbd1d526b6744a8c0111567b8d8f0814b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
