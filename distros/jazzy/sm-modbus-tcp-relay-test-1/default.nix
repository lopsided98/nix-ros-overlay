
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-modbus-tcp-relay, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-modbus-tcp-relay-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_modbus_tcp_relay_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "3253010aa3a9f212434086e3279e952799c8c0320223da09684f3594dc557db0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-modbus-tcp-relay smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test state machine for cl_modbus_tcp_relay client library";
    license = with lib.licenses; [ asl20 ];
  };
}
