
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, sensor-msgs, catkin, message-generation, message-runtime, libgphoto2, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-photo";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/bosch-ros-pkg/photo-release/archive/release/melodic/photo/1.0.2-0.tar.gz;
    sha256 = "5ab583e7e4fa6f71d8d382ae733500dfa930700b6505f9d3fe52c92619852391";
  };

  buildInputs = [ message-generation self-test libgphoto2 std-msgs sensor-msgs roscpp ];
  propagatedBuildInputs = [ message-runtime self-test libgphoto2 std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The photo package provides access to digital cameras. Much of the underlying functionality is provide by the gPhoto libary. The system package libgphoto2-2-dev or equivalent is required.&gt;'';
    #license = lib.licenses.BSD;
  };
}
