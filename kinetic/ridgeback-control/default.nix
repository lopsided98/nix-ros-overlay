
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, realtime-tools, catkin, joy, robot-localization, nav-msgs, urdf, controller-interface, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch, tf }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-control";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/ridgeback_control/0.2.2-0.tar.gz;
    sha256 = "48adc4b082c2fbd306b49077d3b04a8a84b25ffc2a2da7e807a1d114ef209ca8";
  };

  buildInputs = [ controller-manager nav-msgs urdf controller-interface realtime-tools tf ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller realtime-tools joy robot-localization nav-msgs urdf controller-interface teleop-twist-joy interactive-marker-twist-server topic-tools tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Ridgeback'';
    #license = lib.licenses.BSD;
  };
}
