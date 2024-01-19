
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-gpio-controller";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/gpio_controller/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "90be855ab54bc16a1f89b6750da4e4b3faa224c7a5111f17fe15f9e2d1c95592";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib realtime-tools rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpio_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
