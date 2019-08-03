
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, realtime-tools, catkin, joy, robot-localization, nav-msgs, urdf, controller-interface, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch, tf }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-control";
  version = "0.2.2-r2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_control/0.2.2-2.tar.gz;
    sha256 = "01f82dc54d0014b72a8937d8a1e422319a8d28cdde23ef9ec14de797ce1311cd";
  };

  buildInputs = [ controller-manager realtime-tools nav-msgs urdf controller-interface tf ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller realtime-tools joy robot-localization nav-msgs urdf controller-interface teleop-twist-joy interactive-marker-twist-server topic-tools tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
