
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-plume-msgs, sensor-msgs, catkin, tf2-ros, nav-msgs, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-cpc-sensor";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_plume_simulator-release/archive/release/kinetic/uuv_cpc_sensor/0.3.1-0.tar.gz;
    sha256 = "71e72a08872eccacb2d66d1a32c0523439362aa8bd8c511f7f792dc782ab2602";
  };

  buildInputs = [ uuv-plume-msgs sensor-msgs tf2-ros nav-msgs std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ uuv-plume-msgs sensor-msgs nav-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_cpc_sensor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
