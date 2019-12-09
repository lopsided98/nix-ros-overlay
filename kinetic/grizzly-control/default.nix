
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, robot-state-publisher, twist-mux, catkin, rostopic, interactive-marker-twist-server, robot-localization, diff-drive-controller, grizzly-description, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-control";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly-release/archive/release/kinetic/grizzly_control/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "12731abb37635227052c0376c762ee78879401e10733ef1ab4d68ce3b99931ef";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager robot-state-publisher twist-mux rostopic interactive-marker-twist-server robot-localization diff-drive-controller grizzly-description joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Grizzly controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
