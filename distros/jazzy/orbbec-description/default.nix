
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-description";
  version = "1.5.14-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v1-release/archive/release/jazzy/orbbec_description/1.5.14-1.tar.gz";
    name = "1.5.14-1.tar.gz";
    sha256 = "6a49e906020f3e2ec35ae3fbec33c7b951aa883635c55ec2e55acb14a6e6380f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ asl20 ];
  };
}
