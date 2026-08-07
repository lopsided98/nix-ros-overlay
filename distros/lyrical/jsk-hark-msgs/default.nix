
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-hark-msgs";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/lyrical/jsk_hark_msgs/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "1c3c7bdd5b2b563727a544b44638db3401b6bbe734f52e1096179a1179f1cd7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "jsk_hark_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
