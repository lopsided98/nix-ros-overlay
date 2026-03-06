
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ewellix-description, ewellix-interfaces, ewellix-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-lift-common";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_lift_common/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "80bdfc08f9ff24b67da71853eee3217d8686d2e68c9c2d4bdc94f839783529ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ewellix-description ewellix-interfaces ewellix-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for common Ewellix lift packages";
    license = with lib.licenses; [ bsd3 ];
  };
}
