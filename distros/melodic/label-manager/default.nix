
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, mesh-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-label-manager";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/label_manager/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "97b371fb101be7bf59209d81b3c9780abe22d1a78eeb2555a86a320e754c03b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs genmsg mesh-msgs message-generation message-runtime roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serving and persisting label information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
