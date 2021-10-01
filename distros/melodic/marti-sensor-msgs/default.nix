
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-marti-sensor-msgs";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_sensor_msgs/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "f67e116de61763b26fba3c3971f443cf89efa11812303b06d6c303ef688ed9e2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
