
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-controller-configuration";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_controller_configuration/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "785672598e71e652faceecfa93a73d786f93822411b193554481e71f4ed46c84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_hey5_controller_configuration package'';
    license = with lib.licenses; [ asl20 ];
  };
}
