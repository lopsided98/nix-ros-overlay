
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmcl";
  version = "4.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/noetic/adi_tmcl/4.0.1-3.tar.gz";
    name = "4.0.1-3.tar.gz";
    sha256 = "ab58d8776f6a84e90ad1e81b9f5fe4cdf26ef662437b4ca1f3a20bec61b83ebc";
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
