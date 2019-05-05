
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, marti-common-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-nav-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_nav_msgs/0.8.0-0.tar.gz;
    sha256 = "d4e787cb1a9e173eda0759738129af2ec90c286bcc3dcc35b4d622198ed2b917";
  };

  buildInputs = [ sensor-msgs geographic-msgs message-generation marti-common-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geographic-msgs marti-common-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_nav_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
