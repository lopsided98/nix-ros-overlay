
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, qt5, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-find-object-2d";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/melodic/find_object_2d/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "bd49b707c52b9c3bbc257f082562beb25139a89572bb87f531f795b6b8edacb9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport message-filters message-runtime qt5.qtbase roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
