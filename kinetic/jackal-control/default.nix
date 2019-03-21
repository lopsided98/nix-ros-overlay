
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, robot-localization, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jackal-control";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_control/0.6.1-0.tar.gz;
    sha256 = "d88b33dcd28c0e905c380499b64cc9e7e8a44d28244ece638fd1b05b70b27eaa";
  };

  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy robot-localization teleop-twist-joy interactive-marker-twist-server topic-tools ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Controllers for Jackal'';
    #license = lib.licenses.BSD;
  };
}
