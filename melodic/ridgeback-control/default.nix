
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, controller-interface, nav-msgs, controller-manager, urdf, tf, catkin, interactive-marker-twist-server, robot-localization, realtime-tools, topic-tools, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-control";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_control/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "01f82dc54d0014b72a8937d8a1e422319a8d28cdde23ef9ec14de797ce1311cd";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface controller-manager urdf tf realtime-tools nav-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joy teleop-twist-joy controller-interface controller-manager urdf tf interactive-marker-twist-server robot-localization realtime-tools topic-tools nav-msgs joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
