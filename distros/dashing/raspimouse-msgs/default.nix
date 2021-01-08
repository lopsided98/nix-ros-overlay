
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-raspimouse-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/rt-net/raspimouse2-release/archive/release/dashing/raspimouse_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f28f8eb19da3983c1164aafec7fa1fcd8d39160272e74822000de4c8a47c3c25";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''RaspiMouse messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
