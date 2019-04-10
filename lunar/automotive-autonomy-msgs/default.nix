
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automotive-navigation-msgs, catkin, automotive-platform-msgs }:
buildRosPackage {
  pname = "ros-lunar-automotive-autonomy-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/lunar/automotive_autonomy_msgs/2.0.3-0.tar.gz;
    sha256 = "7bba7904c20e1f705b18d693f168cbc116bbe30dae00501201da7b1fbc87629c";
  };

  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for vehicle automation'';
    #license = lib.licenses.MIT;
  };
}
