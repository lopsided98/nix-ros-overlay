
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-soccer-vision-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_interfaces-release/archive/release/foxy/soccer_vision_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "515d4b307a9882bf727f18db82a91c046fded75eeacf0076a2c582ebbf0cbfa4";
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
