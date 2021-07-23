
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-soccer-vision-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_interfaces-release/archive/release/galactic/soccer_vision_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "aded059455744e4dec01b420d64aca707f1db55901a85b190c2cb0d318be217b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing interfaces to be used in a soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
