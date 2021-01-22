
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/rt-net/raspimouse2-release/archive/release/foxy/raspimouse_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a27e607fbda45931b237e08575a1c821f21b255e4ea6191c200b915036011c7f";
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
