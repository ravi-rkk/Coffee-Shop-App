# Coffee Shop Project

## Overview
This is a small coffee shop web application that allows users to view the menu, add items to the cart, and make purchases. The project includes an admin panel for managing coffee items, including adding, updating, and deleting coffee details.

## Features
- User can browse the coffee menu.
- Add items to the cart.
- Make purchases directly through the platform.
- Admin panel to manage coffee details (add, update, delete items).

## Technologies Used
- **Frontend:** React.js
- **Backend:** Node.js, Express.js
- **Database:** MySQL
- **Authentication:** JWT

## Installation & Setup
### Prerequisites
Ensure you have the following installed:
- Node.js
- MySQL
- npm or yarn

### Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/coffee-shop.git
   cd coffee-shop
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Set up the database:
   - Create a MySQL database.
   - Configure database connection in the `.env` file.
4. Run the backend:
   ```sh
   npm run server
   ```
5. Run the frontend:
   ```sh
   npm start
   ```

## API Endpoints
### User Endpoints
- `GET /menu` - Fetch all coffee items.
- `POST /cart` - Add items to the cart.
- `POST /order` - Place an order.

### Admin Endpoints
- `POST /admin/add-coffee` - Add a new coffee item.
- `PUT /admin/update-coffee/:id` - Update an existing coffee item.
- `DELETE /admin/delete-coffee/:id` - Remove a coffee item.

## Future Enhancements
- Payment gateway integration.
- User authentication and profile management.
- Order tracking system.

## License
This project is licensed under the MIT License.
