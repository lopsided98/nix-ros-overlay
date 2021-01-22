
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy, sensor-msgs, std-msgs, uuv-plume-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-plume-simulator";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_plume_simulator-release/archive/release/kinetic/uuv_plume_simulator/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "82a06dc4031547cfea25deba1cc03d223539736553ea9de5b304cc03afb9411c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy rospy sensor-msgs std-msgs uuv-plume-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plume simulator package'';
    license = with lib.licenses; [ asl20 ];
  };
}
