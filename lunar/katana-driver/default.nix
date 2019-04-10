
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, katana-gazebo-plugins, katana-msgs, katana-arm-gazebo, catkin, katana-description, katana-tutorials, katana, kni, katana-moveit-ikfast-plugin, katana-teleop }:
buildRosPackage {
  pname = "ros-lunar-katana-driver";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_driver/1.1.2-0.tar.gz;
    sha256 = "4e6408ea9eeb476c9819d44575cad93600e145c900d7fd9be663c15f24ec82a4";
  };

  propagatedBuildInputs = [ katana-gazebo-plugins katana-msgs katana-arm-gazebo katana-description katana-tutorials kni katana-teleop katana-moveit-ikfast-plugin katana ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all descriptions, drivers and bringup facilities for Neuronics Katana 450 arm.'';
    #license = lib.licenses.BSD, GPL;
  };
}
