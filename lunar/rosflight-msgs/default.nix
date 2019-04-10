
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosflight-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/lunar/rosflight_msgs/1.0.0-0.tar.gz;
    sha256 = "b844240f0bb28572b31d688238522a996bd760686b3d9b7e57cbfc1ce016b7a4";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for the ROSflight ROS stack'';
    #license = lib.licenses.BSD;
  };
}
