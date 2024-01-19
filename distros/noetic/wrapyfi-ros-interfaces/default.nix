
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-wrapyfi-ros-interfaces";
  version = "0.4.30-r1";

  src = fetchurl {
    url = "https://github.com/modular-ml/wrapyfi_ros_interfaces-release/archive/release/noetic/wrapyfi_ros_interfaces/0.4.30-1.tar.gz";
    name = "0.4.30-1.tar.gz";
    sha256 = "11082455a26021a26db6e3023d35e6e8ea9347d77a4763fd540b22ef59d2b57a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wrapyfi_ros_interfaces package'';
    license = with lib.licenses; [ mit ];
  };
}
