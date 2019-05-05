
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, catkin, rostest, controller-interface, controller-manager-msgs }:
buildRosPackage {
  pname = "ros-lunar-controller-manager";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/controller_manager/0.13.3-0.tar.gz;
    sha256 = "3f2b085107a02027392a119809087d7d583ee7a69026eb90cd294d34fefe3a5c";
  };

  buildInputs = [ hardware-interface controller-interface controller-manager-msgs pluginlib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface controller-interface controller-manager-msgs pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
