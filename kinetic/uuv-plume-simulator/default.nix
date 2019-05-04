
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-plume-msgs, sensor-msgs, catkin, pythonPackages, rospy, std-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-plume-simulator";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_plume_simulator-release/archive/release/kinetic/uuv_plume_simulator/0.3.1-0.tar.gz;
    sha256 = "82a06dc4031547cfea25deba1cc03d223539736553ea9de5b304cc03afb9411c";
  };

  buildInputs = [ uuv-plume-msgs pythonPackages.numpy sensor-msgs rospy std-msgs visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ uuv-plume-msgs pythonPackages.numpy sensor-msgs rospy std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plume simulator package'';
    license = with lib.licenses; [ asl20 ];
  };
}
