
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographiclib, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf2-ros, uuv-plume-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-cpc-sensor";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_plume_simulator-release/archive/release/kinetic/uuv_cpc_sensor/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "71e72a08872eccacb2d66d1a32c0523439362aa8bd8c511f7f792dc782ab2602";
  };

  buildType = "catkin";
  buildInputs = [ geographiclib roscpp tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs sensor-msgs std-msgs uuv-plume-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_cpc_sensor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
