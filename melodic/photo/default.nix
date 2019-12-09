
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, std-msgs, catkin, libgphoto2, self-test, roscpp, message-runtime, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-photo";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/bosch-ros-pkg/photo-release/archive/release/melodic/photo/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "61ab67a9bc3909382c062c6c93be55830c71b889b35326014bf3966b88fb354f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs roscpp libgphoto2 self-test opencv3 message-generation ];
  propagatedBuildInputs = [ sensor-msgs std-msgs roscpp libgphoto2 self-test opencv3 message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The photo package provides access to digital cameras. Much of the underlying functionality is provide by the gPhoto libary. The system package libgphoto2-2-dev or equivalent is required.&gt;'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
