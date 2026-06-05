
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, boost, smacc2, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sm-simple-action-client";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_simple_action_client/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "d53aaaf8f089b166c737148d98c55433d1718c309d44c2b4e19af0e3e4ed226f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-tutorials-interfaces boost smacc2 std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_simple_action_client package";
    license = with lib.licenses; [ asl20 "MyLicense" ];
  };
}
