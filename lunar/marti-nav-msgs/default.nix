
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, marti-common-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-marti-nav-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/lunar/marti_nav_msgs/0.8.0-0.tar.gz;
    sha256 = "e200fc3573b6a162b35fa670ecb4850173279a4ca06e7f1d29c143fce5fe18e4";
  };

  buildInputs = [ sensor-msgs geographic-msgs message-generation marti-common-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geographic-msgs marti-common-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_nav_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
