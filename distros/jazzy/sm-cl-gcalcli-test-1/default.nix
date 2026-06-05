
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-gcalcli, cl-ros2-timer, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-cl-gcalcli-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_cl_gcalcli_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "eb63a612483d3137dd925f745c86d7edc7bb0cdf95f3627f3684805ce3b16b9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-gcalcli cl-ros2-timer smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Unit test state machine for cl_gcalcli client library";
    license = with lib.licenses; [ asl20 ];
  };
}
