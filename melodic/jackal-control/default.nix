
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, robot-localization, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-jackal-control";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_control/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "1a95bcfbb422b9109be66ef8b0109797bedd3e665f37985c9b63f8aa3e92b793";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy robot-localization teleop-twist-joy interactive-marker-twist-server topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
