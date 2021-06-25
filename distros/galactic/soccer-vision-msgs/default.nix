
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-soccer-vision-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_interfaces-release/archive/release/galactic/soccer_vision_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "45ecaf07aa73795b72c927bf264a8a628a0319dcedd4955ffc73021b549e05e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
