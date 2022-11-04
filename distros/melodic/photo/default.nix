
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libgphoto2, message-generation, message-runtime, opencv, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-photo";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/bosch-ros-pkg/photo-release/archive/release/melodic/photo/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "61ab67a9bc3909382c062c6c93be55830c71b889b35326014bf3966b88fb354f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ libgphoto2 message-runtime opencv roscpp self-test sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The photo package provides access to digital cameras. Much of the underlying functionality is provide by the gPhoto libary. The system package libgphoto2-2-dev or equivalent is required.&gt;'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
