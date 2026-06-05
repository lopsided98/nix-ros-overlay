
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-gcalcli";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_gcalcli/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "98688bdcf9d0945706976bbb41349de7904fe34f0150cef262ecb22c04078976";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 client library for Google Calendar integration via gcalcli";
    license = with lib.licenses; [ asl20 ];
  };
}
