
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, diagnostic-msgs, image-transport, libyamlcpp, pkg-config, python3Packages, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jderobot-camviz";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/JdeRobot/CamViz-release/archive/release/melodic/jderobot_camviz/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "c7e538328be52770bd2746dac33c2665bfd4388af307577b319ea1a8b982708d";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  checkInputs = [ diagnostic-msgs ];
  propagatedBuildInputs = [ cv-bridge image-transport libyamlcpp python3Packages.pyyaml roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ python3Packages.catkin-pkg ];

  meta = {
    description = ''camViz package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
