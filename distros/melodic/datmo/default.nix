
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-generation, message-runtime, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-datmo";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/kostaskonkk/datmo-release/archive/release/melodic/datmo/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "7003a039dda59b01b5d934a090ea54ac289ef7653a975b1fda2063d429dee91b";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen message-generation nav-msgs sensor-msgs tf tf2-geometry-msgs visualization-msgs ];
  propagatedBuildInputs = [ message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The LIDAR Detection and Tracking of Moving Objects package'';
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
