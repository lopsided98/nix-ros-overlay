
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, mesh-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-label-manager";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/label_manager/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4dfe909eaef99fc3c632498a58de78e48bff3a2fb7cede0c3a8bfe2043b68ed4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs genmsg mesh-msgs message-generation message-runtime roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serving and persisting label information'';
    license = with lib.licenses; [ bsd3 ];
  };
}
