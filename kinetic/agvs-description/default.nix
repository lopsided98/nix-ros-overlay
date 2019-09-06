
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, roscpp, message-runtime, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-agvs-description";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_common-release/archive/release/kinetic/agvs_description/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "c9baa844569cef40231442ddd9bd68daeb4c9c93c98511cbe3f383b70393d095";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs std-srvs tf roscpp ];
  propagatedBuildInputs = [ std-srvs roscpp message-runtime std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_description package. Robot description. Urdf and mesh files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
