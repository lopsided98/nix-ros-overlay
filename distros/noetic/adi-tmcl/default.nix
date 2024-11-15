
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmcl";
  version = "4.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/noetic/adi_tmcl/4.0.2-2.tar.gz";
    name = "4.0.2-2.tar.gz";
    sha256 = "a1126bafc42a229094d0f21b1b91d0c8a80bcf6edf726a8a36272ccdad2e912b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The adi_tmcl ROS package";
    license = with lib.licenses; [ mit ];
  };
}
