
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, controller-interface, nav-msgs, controller-manager, urdf, tf, catkin, interactive-marker-twist-server, robot-localization, realtime-tools, topic-tools, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-control";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/ridgeback_control/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "48adc4b082c2fbd306b49077d3b04a8a84b25ffc2a2da7e807a1d114ef209ca8";
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
