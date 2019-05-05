
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, forward-command-controller, controller-interface }:
buildRosPackage {
  pname = "ros-lunar-position-controllers";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/position_controllers/0.13.4-0.tar.gz;
    sha256 = "4bf2d81bf04e1c49776126530ce99d5566e1be882493aac9a226ca5aa447c4b5";
  };

  buildInputs = [ forward-command-controller controller-interface ];
  propagatedBuildInputs = [ forward-command-controller controller-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
